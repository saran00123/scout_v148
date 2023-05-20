.class public Lcom/pilotlab/rollereye/Bean/ParamBean;
.super Ljava/lang/Object;
.source "ParamBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
    }
.end annotation


# instance fields
.field private body:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

.field private id:Ljava/lang/String;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean;->body:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ParamBean;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean;->body:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ParamBean;->response:Ljava/lang/String;

    return-void
.end method
