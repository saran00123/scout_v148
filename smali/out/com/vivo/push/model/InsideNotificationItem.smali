.class public Lcom/vivo/push/model/InsideNotificationItem;
.super Lcom/vivo/push/model/UPSNotificationMessage;
.source "InsideNotificationItem.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# instance fields
.field private mAppType:I

.field private mInnerPriority:I

.field private mIsShowBigPicOnMobileNet:Z

.field private mMessageType:I

.field private mReactPackage:Ljava/lang/String;

.field private mSuitReactVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/vivo/push/model/UPSNotificationMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppType()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/vivo/push/model/InsideNotificationItem;->mAppType:I

    return v0
.end method

.method public getInnerPriority()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/vivo/push/model/InsideNotificationItem;->mInnerPriority:I

    return v0
.end method

.method public getMessageType()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/vivo/push/model/InsideNotificationItem;->mMessageType:I

    return v0
.end method

.method public getReactPackage()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/vivo/push/model/InsideNotificationItem;->mReactPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuitReactVersion()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/vivo/push/model/InsideNotificationItem;->mSuitReactVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isShowBigPicOnMobileNet()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/vivo/push/model/InsideNotificationItem;->mIsShowBigPicOnMobileNet:Z

    return v0
.end method

.method public setAppType(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/vivo/push/model/InsideNotificationItem;->mAppType:I

    return-void
.end method

.method public setInnerPriority(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/vivo/push/model/InsideNotificationItem;->mInnerPriority:I

    return-void
.end method

.method public setIsShowBigPicOnMobileNet(Z)V
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/vivo/push/model/InsideNotificationItem;->mIsShowBigPicOnMobileNet:Z

    return-void
.end method

.method public setMessageType(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/vivo/push/model/InsideNotificationItem;->mMessageType:I

    return-void
.end method

.method public setReactPackage(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/vivo/push/model/InsideNotificationItem;->mReactPackage:Ljava/lang/String;

    return-void
.end method

.method public setSuitReactVersion(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/vivo/push/model/InsideNotificationItem;->mSuitReactVersion:Ljava/lang/String;

    return-void
.end method
