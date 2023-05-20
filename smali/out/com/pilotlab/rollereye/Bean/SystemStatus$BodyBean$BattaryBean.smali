.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BattaryBean"
.end annotation


# instance fields
.field private charging:I

.field private percentage:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharging()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->charging:I

    return v0
.end method

.method public getPercentage()I
    .registers 2

    .line 194
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->percentage:I

    return v0
.end method

.method public setCharging(I)V
    .registers 2

    .line 190
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->charging:I

    return-void
.end method

.method public setPercentage(I)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->percentage:I

    return-void
.end method
