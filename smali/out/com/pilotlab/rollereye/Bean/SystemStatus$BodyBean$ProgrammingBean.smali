.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgrammingBean"
.end annotation


# instance fields
.field private goRunning:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoRunning()I
    .registers 2

    .line 309
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;->goRunning:I

    return v0
.end method

.method public setGoRunning(I)V
    .registers 2

    .line 313
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;->goRunning:I

    return-void
.end method
