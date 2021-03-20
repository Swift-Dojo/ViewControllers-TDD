@testable import BasicTDDExample
import XCTest

final class LabelViewControllerTests: XCTestCase {
    
    func test_init_labelIsHidden() {
        let sut = LabelViewController()
        
        sut.loadViewIfNeeded()
                
        XCTAssertTrue(sut.titleLabel.isHidden, "El label debe estar oculto al instanciar el viewcontroller")
    }
    
    func test_init_buttonIsVisible() {
        let sut = LabelViewController()
        
        sut.loadViewIfNeeded()
        
        XCTAssertFalse(sut.showTitleButton.isHidden, "El botón no debe estar oculto al instanciar el viewcontroller")
    }
    
    func test_showTitleButtonTap_makesTitleLabelVisible() {
        let sut = LabelViewController()
        
        sut.loadViewIfNeeded()
        sut.showTitleButton.sendActions(for: .touchUpInside)
        
        XCTAssertFalse(sut.titleLabel.isHidden)
    }
    
    func test_showTitleButtonTap_labelShowsExpectedTitle() {
        let sut = LabelViewController()
        
        sut.loadViewIfNeeded()
        sut.showTitleButton.sendActions(for: .touchUpInside)
        
        XCTAssertEqual(sut.titleLabel.text, "Hola mundo")
    }
}
