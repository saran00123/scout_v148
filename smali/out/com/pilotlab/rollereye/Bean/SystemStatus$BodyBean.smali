.class public Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;
.super Ljava/lang/Object;
.source "SystemStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/SystemStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;,
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;,
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;,
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;,
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;,
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;,
        Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;
    }
.end annotation


# instance fields
.field private battary:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

.field private camera:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;

.field private connect:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;

.field private navigate:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

.field private programming:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;

.field private systemVer:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;

.field private wifi:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->battary:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    return-object v0
.end method

.method public getCamera()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->camera:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;

    return-object v0
.end method

.method public getConnect()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->connect:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;

    return-object v0
.end method

.method public getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->navigate:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    return-object v0
.end method

.method public getProgramming()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->programming:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;

    return-object v0
.end method

.method public getSystemVer()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->systemVer:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;

    return-object v0
.end method

.method public getWifi()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->wifi:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;

    return-object v0
.end method

.method public setBattary(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->battary:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    return-void
.end method

.method public setCamera(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->camera:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$CameraBean;

    return-void
.end method

.method public setConnect(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->connect:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ConnectBean;

    return-void
.end method

.method public setNavigate(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->navigate:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    return-void
.end method

.method public setProgramming(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->programming:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;

    return-void
.end method

.method public setSystemVer(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->systemVer:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$SystemBean;

    return-void
.end method

.method public setWifi(Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->wifi:Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$WifiBean;

    return-void
.end method
