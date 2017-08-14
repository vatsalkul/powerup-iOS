import UIKit
import SpriteKit

enum MiniGameIndex: Int {
    case unknown = 0
    case minesweeper = -1
    case sinkToSwim = -2
    case catchIt = -3
}

class MiniGameViewController: UIViewController {
    
    // MARK: Properties
    
    // Keep a reference of the background image so that result scene could use it. (This is being assigned by ScenarioViewController).
    var scenarioBackgroundImage: UIImage? = nil
    
    // Will be assigned in the previous VC (ScenarioViewController).
    var gameIndex: MiniGameIndex = .unknown
    
    // MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var gameScene: SKScene!
        let skView = view as! SKView
        
        // Determine which mini game to load.
        switch (gameIndex) {
            
        // Mine Sweeper
        case .minesweeper:
            let minesweeperGame = MinesweeperGameScene(size: view.bounds.size)
            minesweeperGame.viewController = self
            gameScene = minesweeperGame
            
        // Sink to Swim Game
        case .sinkToSwim:
            let sinkToSwimGame = SinkToSwimGameScene(size: view.bounds.size)
            sinkToSwimGame.viewController = self
            gameScene = sinkToSwimGame
        
        default:
            print("Unknown mini game.")
        }
        
        gameScene.scaleMode = .resizeFill
        skView.ignoresSiblingOrder = true
        skView.presentScene(gameScene)
    }
    
    // Hide status bar.
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // Called by the mini game.
    func endGame() {
        performSegue(withIdentifier: "toResultScene", sender: self)
    }
    
    // MARK: Segues
    @IBAction func unwindToMiniGame(unwindSegue: UIStoryboardSegue) {
        // Reset mini game
    }
}
