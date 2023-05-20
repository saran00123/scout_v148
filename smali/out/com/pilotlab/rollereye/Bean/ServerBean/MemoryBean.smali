.class public Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;
.super Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;
.source "MemoryBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;

.field private msg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->code:I

    return v0
.end method

.method public getData()Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 22
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->code:I

    return-void
.end method

.method public setData(Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->data:Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean$DataBean;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/MemoryBean;->success:Z

    return-void
.end method
