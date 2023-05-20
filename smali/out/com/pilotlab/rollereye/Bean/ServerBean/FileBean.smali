.class public Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;
.super Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;
.source "FileBean.java"


# static fields
.field public static final TYPE_COMPLETE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_UNCOMPLETE:I = 0x2


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->type:I

    return-void
.end method


# virtual methods
.method public getProcess()I
    .registers 5

    .line 26
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 27
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownloadSize()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->type:I

    return v0
.end method

.method public setType(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->type:I

    return-void
.end method
