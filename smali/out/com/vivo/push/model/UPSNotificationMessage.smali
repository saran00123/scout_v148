.class public Lcom/vivo/push/model/UPSNotificationMessage;
.super Ljava/lang/Object;
.source "UPSNotificationMessage.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field public static final CUSTOM:I = 0x3

.field public static final ISMACROREPLACE:I = 0x1

.field public static final OPENACTIVITY:I = 0x4

.field public static final OPENAPP:I = 0x1

.field public static final OPENURL:I = 0x2

.field public static final UNKNOWN:I


# instance fields
.field private mAdClickCheckUrl:Ljava/lang/String;

.field private mCompatibleType:I

.field private mContent:Ljava/lang/String;

.field private mCoverUrl:Ljava/lang/String;

.field private mIconUrl:Ljava/lang/String;

.field private mIsMacroReplace:I

.field private mMsgId:J

.field private mNotifyType:I

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurePicUrl:Ljava/lang/String;

.field private mShowTime:Z

.field private mSkipContent:Ljava/lang/String;

.field private mSkipType:I

.field private mTargetType:I

.field private mTitle:Ljava/lang/String;

.field private mTragetContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearCoverUrl()V
    .registers 2

    const-string v0, ""

    .line 137
    iput-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public clearPurePicUrl()V
    .registers 2

    const-string v0, ""

    .line 141
    iput-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mPurePicUrl:Ljava/lang/String;

    return-void
.end method

.method public getAdClickCheckUrl()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mAdClickCheckUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatibleType()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mCompatibleType:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMacroReplace()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIsMacroReplace:I

    return v0
.end method

.method public getMsgId()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mMsgId:J

    return-wide v0
.end method

.method public getNotifyType()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mNotifyType:I

    return v0
.end method

.method public getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getPurePicUrl()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mPurePicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipContent()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mSkipContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipType()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mSkipType:I

    return v0
.end method

.method public getTargetType()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTargetType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTragetContent()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTragetContent:Ljava/lang/String;

    return-object v0
.end method

.method public isMacroReplace()Z
    .registers 3

    .line 153
    iget v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIsMacroReplace:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isShowTime()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mShowTime:Z

    return v0
.end method

.method public setAdClickCheckUrl(Ljava/lang/String;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mAdClickCheckUrl:Ljava/lang/String;

    return-void
.end method

.method public setCompatibleType(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mCompatibleType:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsMacroReplace(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIsMacroReplace:I

    return-void
.end method

.method public setMsgId(J)V
    .registers 3

    .line 45
    iput-wide p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mMsgId:J

    return-void
.end method

.method public setNotifyType(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mNotifyType:I

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mParams:Ljava/util/Map;

    return-void
.end method

.method public setPurePicUrl(Ljava/lang/String;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mPurePicUrl:Ljava/lang/String;

    return-void
.end method

.method public setShowTime(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mShowTime:Z

    return-void
.end method

.method public setSkipContent(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mSkipContent:Ljava/lang/String;

    return-void
.end method

.method public setSkipType(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mSkipType:I

    return-void
.end method

.method public setTargetType(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTargetType:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTragetContext(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTragetContent:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPSNotificationMessage{mTargetType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTargetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTragetContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTragetContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mNotifyType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mNotifyType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPurePicUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mPurePicUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mIconUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCoverUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mCoverUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSkipContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mSkipContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSkipType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mSkipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShowTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mShowTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mMsgId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/push/model/UPSNotificationMessage;->mParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
