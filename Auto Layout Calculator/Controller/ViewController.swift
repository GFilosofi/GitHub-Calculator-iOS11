//
//  ViewController.swift
//  Auto Layout Calculator
//
//  Created by Gabriele Filosofi on 26/02/2018.
//  Copyright © 2018 Gabriele Filosofi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Operator {
        case perc
        case div
        case mult
        case sub
        case sum
        case undefined
    }
    
    @IBOutlet weak var resultLabel: UILabel!

    var inputOp = 0         //tracks state of operation
    var op1: Double = 0.0   //first operand or partial result
    var op2: Double = 0.0   //second operand
    var op = Operator.undefined       //operator
    var decimalPosition = 0    //tracks position after decimal point
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        restart()
        resultLabel.text = "\(op1)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func restart () {
        decimalPosition = 0
        inputOp = 0
        op1 = 0.0
        op2 = 0.0
        op = Operator.undefined   //no operation
    }
    
    @IBAction func buttonPressed (sender: UIButton) {
        switch sender.tag {
        case 1: //0
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    decimalPosition += 1
                } else {
                    op1 *= 10
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    decimalPosition += 1
                } else {
                    op2 *= 10
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 2: //1
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 1.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 1.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 1.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 1.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 3: //2
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 2.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 2.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 2.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 2.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 4: //3
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 3.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 3.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 3.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 3.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 5: //4
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 4.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 4.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 4.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 4.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 6: //5
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 5.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 5.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 4.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 5.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 7: //6
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 6.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 6.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 6.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 6.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 8: //7
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 7.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 7.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 7.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 7.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 9: //8
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 8.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 8.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 8.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 8.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 10:    //9
            switch inputOp {
            case 0:
                if (decimalPosition > 0) {
                    op1 = op1 + 9.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op1 = 10.0 * op1 + 9.0
                }
                resultLabel.text = "\(op1)"
            case 1:
                if (decimalPosition > 0) {
                    op2 = op2 + 9.0/pow(10, Double(decimalPosition))
                    decimalPosition += 1
                } else {
                    op2 = 10.0 * op2 + 9.0
                }
                resultLabel.text = "\(op2)"
            default: break
            }
        case 11:    //C
            restart()
            resultLabel.text = "\(op1)"
        case 12:    //+/-
            switch inputOp {
            case 0,2:
                op1.negate()
                resultLabel.text = "\(op1)"
            default: break
            }
        case 13:    //%
            if inputOp == 0 || inputOp == 2 {
                op = Operator.perc
                decimalPosition = 0
                inputOp = 1
            } else {
                break
            }
        case 14:    //:
            if inputOp == 0 || inputOp == 2 {
                op = Operator.div
                decimalPosition = 0
                inputOp = 1
            } else {
                break
            }
        case 15:    //x
            if inputOp == 0 || inputOp == 2 {
                op = Operator.mult
                decimalPosition = 0
                inputOp = 1
            } else {
                break
            }
        case 16:    //-
            if inputOp == 0 || inputOp == 2 {
                op = Operator.sub
                decimalPosition = 0
                inputOp = 1
            } else {
                break
            }
        case 17:    //+
            if inputOp == 0 || inputOp == 2 {
                op = Operator.sum
                decimalPosition = 0
                inputOp = 1
            } else {
                break
            }
        case 18:    //=
            if inputOp == 1 {
                switch op {
                case Operator.perc:
                    op1 = op1*op2/100.0
                    op2 = 0.0
                    resultLabel.text = "\(op1)"
                    inputOp = 2
                    decimalPosition = 0
                case Operator.div:
                    op1 = op1/op2
                    op2 = 0.0
                    resultLabel.text = "\(op1)"
                    inputOp = 2
                    decimalPosition = 0
                case Operator.mult:
                    op1 = op1*op2
                    op2 = 0.0
                    resultLabel.text = "\(op1)"
                    inputOp = 2
                    decimalPosition = 0
                case Operator.sub:
                    op1 = op1-op2
                    op2 = 0.0
                    resultLabel.text = "\(op1)"
                    inputOp = 2
                    decimalPosition = 0
                case Operator.sum:
                    op1 = op1+op2
                    op2 = 0.0
                    resultLabel.text = "\(op1)"
                    inputOp = 2
                    decimalPosition = 0
                default:
                    break
                }
            } else {
                break
            }
        case 19: //.
            if decimalPosition == 0 {
                decimalPosition = 1
            }
//            if inputOp == 0 || inputOp == 1 {
//            }
        default:
            break
        }
    }
}
