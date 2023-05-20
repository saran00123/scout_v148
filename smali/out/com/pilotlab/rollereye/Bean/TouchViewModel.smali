.class public Lcom/pilotlab/rollereye/Bean/TouchViewModel;
.super Ljava/lang/Object;
.source "TouchViewModel.java"


# instance fields
.field private bgResId:I

.field private directionPicResId:I

.field private mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

.field private mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

.field private mRoundBgPadding:I

.field private mRoundBgRadius:I

.field private mTouchBallRadius:I

.field private mWholePadHeight:F

.field private mWholePadWid:F

.field private mWholeViewHeight:F

.field private mWholeViewWid:F

.field private resetDuration:I

.field private showDirectionPic:Z

.field private touchBmpResId:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 19
    iput v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mTouchBallRadius:I

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->showDirectionPic:Z

    .line 23
    sget-object v1, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    iput-object v1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 24
    sget-object v1, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    iput-object v1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    .line 26
    iput v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->resetDuration:I

    .line 29
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->bgResId:I

    .line 30
    iput p2, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->touchBmpResId:I

    return-void
.end method


# virtual methods
.method public getBgResId()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->bgResId:I

    return v0
.end method

.method public getDirectionPicResId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->directionPicResId:I

    return v0
.end method

.method public getPadLocationType()Lcom/pilotlab/rollereye/Bean/PadLocationType;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    return-object v0
.end method

.method public getPadStyle()Lcom/pilotlab/rollereye/Bean/PadStyle;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-object v0
.end method

.method public getResetDuration()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->resetDuration:I

    return v0
.end method

.method public getRoundBgPadding()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mRoundBgPadding:I

    return v0
.end method

.method public getRoundBgRadius()I
    .registers 2

    .line 131
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mRoundBgRadius:I

    return v0
.end method

.method public getTouchBallRadius()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mTouchBallRadius:I

    return v0
.end method

.method public getTouchBmpResId()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->touchBmpResId:I

    return v0
.end method

.method public getWholePadHeight()F
    .registers 2

    .line 123
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholePadHeight:F

    return v0
.end method

.method public getWholePadWid()F
    .registers 2

    .line 127
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholePadWid:F

    return v0
.end method

.method public getWholeViewHeight()F
    .registers 2

    .line 111
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholeViewHeight:F

    return v0
.end method

.method public getWholeViewWid()F
    .registers 2

    .line 107
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholeViewWid:F

    return v0
.end method

.method public isShowDirectionPic()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->showDirectionPic:Z

    return v0
.end method

.method public setBgResId(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->bgResId:I

    return-void
.end method

.method public setContentSize(II)V
    .registers 3

    .line 47
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mRoundBgRadius:I

    .line 48
    iput p2, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mTouchBallRadius:I

    return-void
.end method

.method public setDirectionPicResId(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->directionPicResId:I

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->showDirectionPic:Z

    return-void
.end method

.method public setPadSize(FF)V
    .registers 3

    .line 41
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholePadWid:F

    .line 42
    iput p2, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholePadHeight:F

    return-void
.end method

.method public setResetDuration(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->resetDuration:I

    return-void
.end method

.method public setRoundBgPadding(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mRoundBgPadding:I

    return-void
.end method

.method public setStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;Lcom/pilotlab/rollereye/Bean/PadLocationType;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mPadStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 66
    iput-object p2, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mPadLocationType:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    return-void
.end method

.method public setTouchBallRadius(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mTouchBallRadius:I

    return-void
.end method

.method public setWholeViewSize(FF)V
    .registers 3

    .line 35
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholeViewWid:F

    .line 36
    iput p2, p0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->mWholeViewHeight:F

    return-void
.end method
