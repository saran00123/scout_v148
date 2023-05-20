.class public Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;
.super Ljava/lang/Object;
.source "SimpleDataBean.java"


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

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

    .line 20
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 44
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->code:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->success:Z

    return-void
.end method
