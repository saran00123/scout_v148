.class public Lcom/pilotlab/rollereye/Bean/NasConfigBean;
.super Ljava/lang/Object;
.source "NasConfigBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;
    }
.end annotation


# instance fields
.field private body:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

.field private id:I

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->body:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->id:I

    return v0
.end method

.method public getResponse()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->body:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->id:I

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->response:Ljava/lang/String;

    return-void
.end method
