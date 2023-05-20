.class public Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;
.super Ljava/lang/Object;
.source "NormalBean.java"


# instance fields
.field private code:I

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

    .line 17
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->success:Z

    return-void
.end method
