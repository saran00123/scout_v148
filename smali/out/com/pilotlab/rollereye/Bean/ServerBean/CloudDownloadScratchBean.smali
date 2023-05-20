.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;
.super Ljava/lang/Object;
.source "CloudDownloadScratchBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;

.field private msg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->code:I

    return v0
.end method

.method public getData()Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->code:I

    return-void
.end method

.method public setData(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->success:Z

    return-void
.end method
