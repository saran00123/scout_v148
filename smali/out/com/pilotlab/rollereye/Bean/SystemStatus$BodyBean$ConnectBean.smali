.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectBean"
.end annotation


# instance fields
.field private cloud:I

.field private p2p:I

.field private sock:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloud()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;->cloud:I

    return v0
.end method

.method public getP2p()I
    .registers 2

    .line 126
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;->p2p:I

    return v0
.end method

.method public getSock()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;->sock:I

    return v0
.end method

.method public setCloud(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;->cloud:I

    return-void
.end method

.method public setP2p(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;->p2p:I

    return-void
.end method

.method public setSock(I)V
    .registers 2

    .line 138
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;->sock:I

    return-void
.end method
