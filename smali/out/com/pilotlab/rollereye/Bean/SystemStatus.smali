.class public Lcom/pilotlab/rollereye/Bean/SystemStatus;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
    }
.end annotation


# instance fields
.field private body:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

.field private id:Ljava/lang/String;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus;->body:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus;->body:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus;->id:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus;->response:Ljava/lang/String;

    return-void
.end method
