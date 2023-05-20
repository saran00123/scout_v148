.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;
.super Ljava/lang/Object;
.source "CloudMealBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->code:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->success:Z

    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->code:I

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->data:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudMealBean;->success:Z

    return-void
.end method
