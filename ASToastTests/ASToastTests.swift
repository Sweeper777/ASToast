//
//  ASToastTests.swift
//  ASToast
//
//  Created by Abdullah Selek on 06/08/16.
//  Copyright © 2016 Abdullah Selek. All rights reserved.
//

import UIKit
import Quick
import Nimble

@testable import ASToast

class ASToastTests: QuickSpec {
    
    override func spec() {
        describe(".makeToast with single text") {
            context("Toast view display success") {
                it("set a valid message") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    backgroundColor: nil,
                                    messageColor: UIColor.cyan)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display fails") {
                it("set a empty message") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    backgroundColor: UIColor.green,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position") {
            context("Toast view display success with parameters") {
                it("set valid message, duration and position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    backgroundColor: UIColor.blue,
                                    messageColor: UIColor.white)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with parameters") {
                it("set a invalid position, valid text and duration") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .top,
                                    backgroundColor: UIColor.blue,
                                    messageColor: UIColor.white)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display fails with 3 parameters when text is empty") {
                it("set a empty text, valid duration and valid position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .bottom,
                                    backgroundColor: UIColor.blue,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position and title") {
            context("Toast view diplays success with parameters") {
                it("set valid message, duration, position and title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .center,
                                    title: "TITLE",
                                    backgroundColor: nil,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with parameters when text is empty") {
                it("set empty message, duration, position and title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .top,
                                    title: "TITLE",
                                    backgroundColor: UIColor.blue,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with parameters when title is empty") {
                it("set message, duration, position and empty title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .bottom,
                                    title: "",
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with parameters when position empty") {
                it("set message, duration, position and empty title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .center,
                                    title: "TITLE",
                                    backgroundColor: nil,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display fails with parameters when mesage and title empty") {
                it("set message, duration, position and empty title") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .top,
                                    title: "",
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position and image") {
            context("Toast view diplay success with valid parameters") {
                it("set valid message, duration, position and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .bottom,
                                    image: UIImage(named: "apple_logo.png"),
                                    backgroundColor: nil,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with duration, position, image and empty message") {
                it("set duration, position, image and empty message") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .center,
                                    image: UIImage(named: "apple_logo.png"),
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, duration, image and empty position") {
                it("set message, duration, position and empty image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .top,
                                    image: UIImage(named: "apple_logo.png"),
                                    backgroundColor: nil,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay fails with duration, position, empty message and image") {
                it("set message, duration, position and empty image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .bottom,
                                    image: UIImage(named: ""),
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(0))
                }
            }
        }
        describe(".makeToast with message, duration, position, title and image") {
            context("Toast view diplay success with valid parameters") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .center,
                                    title: "TITLE",
                                    image: UIImage(named: "apple_logo.png"),
                                    backgroundColor: nil,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, duration, position, image and empty title") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .top,
                                    title: "",
                                    image: UIImage(named: "apple_logo.png"),
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, title, duration, position and empty image") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .bottom,
                                    title: "",
                                    image: UIImage(named: ""),
                                    backgroundColor: nil,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with message, title, duration, image and empty position") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "TEST",
                                    duration: TimeInterval(3.0),
                                    position: .center,
                                    title: "",
                                    image: UIImage(named: ""),
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay success with duration, position, image and empty message, title") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .top,
                                    title: "",
                                    image: UIImage(named: "apple_logo.png"),
                                    backgroundColor: UIColor.blue,
                                    titleColor: UIColor.cyan,
                                    messageColor: UIColor.yellow)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view diplay fails with duration, position and empty message, title, image") {
                it("set valid message, duration, position, title and image") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToast(message: "",
                                    duration: TimeInterval(3.0),
                                    position: .bottom,
                                    title: "",
                                    image: UIImage(named: ""),
                                    backgroundColor: UIColor.blue,
                                    titleColor: nil,
                                    messageColor: nil)
                    expect(view?.subviews.count).to(equal(0))
                }
            }
        }
        describe(".showToast with view") {
            context("Toast view display success with view") {
                it("set valid view") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    let toastView = UIView()
                    view!.showToast(toastView: toastView)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
        }
        describe(".showToast with toastView, duration, position") {
            context("Toast view display success with toastView, duration and position") {
                it("set valid toastView, duration and position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    let toastView = UIView()
                    view!.showToast(toastView: toastView,
                                    duration: TimeInterval(3.0),
                                    position: .center)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
            context("Toast view display success with toastView, duration and empty position") {
                it("set valid toastView, duration and empty position") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    let toastView = UIView()
                    view!.showToast(toastView: toastView,
                                    duration: TimeInterval(3.0),
                                    position: .top)
                    expect(view?.subviews.count).to(equal(1))
                }
            }
        }
        describe(".makeToastActivity") {
            context("Toast Activity display success") {
                it("Call makeToastActivity") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToastActivity()
                    expect(view?.subviews.count).to(equal(1))
                }
            }
        }
        describe(".hideToastActivity") {
            context("Toast Activity dismiss success") {
                it("Call hideToastActivity") {
                    let viewController = UIViewController()
                    let view = viewController.view
                    view!.makeToastActivity()
                    expect(view?.subviews.count).to(equal(1))
                    view!.hideToastActivity()
                }
            }
        }
        context("makeToast with message, duration, backgroundColor and messageColor") {
            it("should display a toast", closure: {
                let viewController = UIViewController()
                let view = viewController.view
                view!.makeToast(message: "TEST",
                                duration: TimeInterval(3.0),
                                backgroundColor: UIColor.blue,
                                messageColor: UIColor.white)
                expect(view?.subviews.count).to(equal(1))
            })
        }
        context("makeToast with message, title, duration, backgroundColor, titleColor and messageColor") {
            it("should display a toast", closure: {
                let viewController = UIViewController()
                let view = viewController.view
                view!.makeToast(message: "TEST",
                                title: "TITLE",
                                backgroundColor: UIColor.blue,
                                titleColor: UIColor.yellow,
                                messageColor: UIColor.white)
                expect(view?.subviews.count).to(equal(1))
            })
        }
        context("makeToast with message, duration, title, duration, backgroundColor, titleColor and messageColor") {
            it("should display a toast", closure: {
                let viewController = UIViewController()
                let view = viewController.view
                view!.makeToast(message: "TEST",
                                duration: TimeInterval(3.0),
                                title: "TITLE",
                                backgroundColor: UIColor.blue,
                                titleColor: UIColor.yellow,
                                messageColor: UIColor.white)
                expect(view?.subviews.count).to(equal(1))
            })
        }
        context("showToast view with point") {
            it("should display a toast", closure: {
                let viewController = UIViewController()
                let view = viewController.view
                let toastView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
                view!.showToast(toastView: toastView, point: CGPoint(x: 10, y: 10))
                expect(view?.subviews.count).to(equal(1))
            })
        }
        context("showToast view with duration and point") {
            it("should display a toast", closure: {
                let viewController = UIViewController()
                let view = viewController.view
                let toastView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
                view!.showToast(toastView: toastView, duration: TimeInterval(3.0), point: CGPoint(x: 10, y: 10))
                expect(view?.subviews.count).to(equal(1))
            })
        }
//        /**
//         Show toast view with point
//         - parameter toastView: Toast view
//         - parameter duration: The time duration toast will displayed on the screen
//         - parameter CGPoint: The position point that toast will displayed
//         */
//        public func showToast(toastView: UIView!,
//                              duration: TimeInterval!,
//                              point: CGPoint) {
    }

}
