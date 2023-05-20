.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiBean"
.end annotation


# instance fields
.field private mode:I

.field private signal:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;->mode:I

    return v0
.end method

.method public getSignal()I
    .registers 2

    .line 168
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;->signal:I

    return v0
.end method

.method public setMode(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;->mode:I

    return-void
.end method

.method public setSignal(I)V
    .registers 2

    .line 172
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;->signal:I

    return-void
.end method
