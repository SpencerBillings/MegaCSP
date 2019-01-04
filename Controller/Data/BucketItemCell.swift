//
//  BucketItemCell.swift
//  DataProject
//
//  Created by Billings, Spencer on 11/30/18.
//  Copyright © 2018 Billings, Spencer. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell
{
    var currentBucketItem : BucketItem!
    {
        didSet
        {
        updateCellView()
        }
    }

    public override func awakeFromNib() -> Void
    {
        super.awakeFromNib()
        // Initialization code
    }

    public override func setSelected(_ selected: Bool, animated: Bool) -> Void
    {
        super.setSelected(selected, animated: animated)
    }

    @IBOutlet weak var bucketItemText : UILabel!
    @IBOutlet weak var bucketItemSymbol : UILabel!
    @IBOutlet weak var bucketItemSignature : UILabel!
    
    private func randomEmoji() -> String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
//      let symbolStart = 0x1F680
//      let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
//      let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
    
    /* This method updates te contents of each cell because it is called in the didSet property observer. */
    private func updateCellView() -> Void
    {
        if(currentBucketItem != nil)
        {
            bucketItemSignature.text = currentBucketItem.itemAuthor
            bucketItemText.text = currentBucketItem.itemContents
        }
        else
        {
        bucketItemSignature.text = "Author here"
        bucketItemText.text = "Bucket item contents here"
        }
        
        bucketItemSymbol.text = randomEmoji()
    }
}
