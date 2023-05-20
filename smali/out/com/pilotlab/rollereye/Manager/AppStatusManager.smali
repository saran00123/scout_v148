.class public Lcom/pilotlab/rollereye/Manager/AppStatusManager;
.super Ljava/lang/Object;
.source "AppStatusManager.java"


# static fields
.field public static appStatusManager:Lcom/pilotlab/rollereye/Manager/AppStatusManager;


# instance fields
.field public appStatus:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->appStatus:I

    return-void
.end method

.method public static getInstance()Lcom/pilotlab/rollereye/Manager/AppStatusManager;
    .registers 1

    .line 21
    sget-object v0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->appStatusManager:Lcom/pilotlab/rollereye/Manager/AppStatusManager;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Manager/AppStatusManager;-><init>()V

    sput-object v0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->appStatusManager:Lcom/pilotlab/rollereye/Manager/AppStatusManager;

    .line 24
    :cond_b
    sget-object v0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->appStatusManager:Lcom/pilotlab/rollereye/Manager/AppStatusManager;

    return-object v0
.end method


# virtual methods
.method public getAppStatus()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->appStatus:I

    return v0
.end method

.method public setAppStatus(I)V
    .registers 2

    .line 32
    iput p1, p0, Lcom/pilotlab/rollereye/Manager/AppStatusManager;->appStatus:I

    return-void
.end method
