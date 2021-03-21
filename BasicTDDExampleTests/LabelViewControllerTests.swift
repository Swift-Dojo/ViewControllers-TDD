@testable import BasicTDDExample
import XCTest

final class LabelViewControllerTests: XCTestCase {
    
    func test_init_labelIsHidden() {
        let sut = makeSUT()
                        
        XCTAssertTrue(sut.titleLabel.isHidden, "El label debe estar oculto al instanciar el viewcontroller")
    }
    
    func test_init_buttonIsVisible() {
        let sut = makeSUT()
                
        XCTAssertFalse(sut.showTitleButton.isHidden, "El botón no debe estar oculto al instanciar el viewcontroller")
    }
    
    func test_showTitleButtonTap_makesTitleLabelVisible() {
        let sut = makeSUT()
        
        sut.showTitleButton.sendActions(for: .touchUpInside)
        
        XCTAssertFalse(sut.titleLabel.isHidden)
    }
    
    func test_showTitleButtonTap_labelShowsExpectedTitle() {
        let sut = makeSUT()
        
        sut.showTitleButton.sendActions(for: .touchUpInside)
        
        XCTAssertEqual(sut.titleLabel.text, "Hola mundo")
    }
    
    // MARK: - Helpers
    
    private func makeSUT() -> LabelViewController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let sut: LabelViewController = sb.instantiateViewController(identifier: "LabelViewController")
        
        sut.loadViewIfNeeded()
        
        return sut
    }
}
