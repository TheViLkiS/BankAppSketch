//
//  CodeTextField.swift
//  BankAppSketch
//
//  Created by Дмитрий Гусев on 06.04.2023.
//


import UIKit

/// `UITextField` subclass to handle OTP code input. Each digit is underlined.
/// Aside from default properties you can customize code length, letter spacing,
///  underline dash height and placeholder color are configurable
final class CodeTextField: UITextField {
    /// Code length. Usually it 4-6 symbols. Default is 4
    var length: Int = 4
    
    /// Letter spacing between digits
    var letterSpacing: CGFloat = 20
    
    /// Height of underline dash
    var dashHeight: CGFloat = 3
    
    /// Used for placeholder and bottom dashes. Default is `UIColor.gray`
    var placeholderColor: UIColor = UIColor.gray
    
    /// Draw dash under each digit. Default is `false`
    var showDashes: Bool = false
    
    override var font: UIFont? {
        didSet {
            symbolWidth = _oneSymbolWidth()
            invalidateIntrinsicContentSize()
        }
    }
    
    private var _placeholder: String {
        String(repeating: "0", count: length)
    }
    
    private var symbolWidth: CGFloat!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return false
        }
        return super.canPerformAction(action, withSender: sender)
    }
    
    private func setup() {
        addTarget(self, action: #selector(didChangeEditing), for: .editingChanged)
        addTarget(self, action: #selector(didEndEditing), for: .editingDidEnd)
        defaultTextAttributes.updateValue(letterSpacing, forKey: .kern)
        tintColor = .clear
        keyboardType = .numberPad
        if #available(iOS 12.0, *) {
            textContentType = .oneTimeCode
        }
        backgroundColor = .green
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        guard let context = UIGraphicsGetCurrentContext(), showDashes else { return }
        
        context.setStrokeColor(placeholderColor.cgColor)
        context.setFillColor(placeholderColor.cgColor)
        context.setLineWidth(dashHeight)
        context.move(to: CGPoint(x: 0, y: bounds.height))
        context.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
        context.setLineDash(phase: 0, lengths: [symbolWidth - letterSpacing, letterSpacing])
        context.strokePath()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(
            origin: .zero,
            size: CGSize(width: bounds.width + letterSpacing + symbolWidth, height: bounds.height)
        )
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        CGRect(
            origin: .zero,
            size: CGSize(width: bounds.width + letterSpacing, height: bounds.height)
        )
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        CGRect(
            origin: .zero,
            size: CGSize(width: bounds.width + letterSpacing, height: bounds.height)
        )
    }
    
    override func caretRect(for position: UITextPosition) -> CGRect {
        .zero
    }
    
    override var intrinsicContentSize: CGSize {
        let attrstr = NSAttributedString(
            string: _placeholder,
            attributes: [
                .font : font!,
                .kern: letterSpacing
            ])
                
        var size = attrstr.boundingRect(
            with: CGSize(width: 500, height: 500),
            options: [.usesFontLeading, .usesLineFragmentOrigin],
            context: nil
        ).size
        size.width -= letterSpacing
        return size
    }
    
    func _oneSymbolWidth() -> CGFloat {
        let attrstr = NSAttributedString(
            string: "0",
            attributes: [
                .font : font!,
                .kern: letterSpacing
            ])
                
        let size = attrstr.boundingRect(with: CGSize(width: 500, height: 500),
                                        options: [.usesFontLeading, .usesLineFragmentOrigin],
                                        context: nil).size
        return size.width
    }
    
    @objc private func didChangeEditing() {
        guard let text = text, text.count > length else { return }
        self.text = String(text.dropFirst(length))
    }
    
    @objc private func didEndEditing() {
        guard let text = text, text.count > length else { return }
        self.text = String(text.prefix(length))
    }
}
