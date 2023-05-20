.class public Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;
.super Ljava/lang/Object;
.source "WiFListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifisBean"
.end annotation


# instance fields
.field private quality:D

.field private signal:I

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuality()D
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->quality:D

    return-wide v0
.end method

.method public getSignal()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->signal:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public setQuality(D)V
    .registers 3

    .line 95
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->quality:D

    return-void
.end method

.method public setSignal(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->signal:I

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->ssid:Ljava/lang/String;

    return-void
.end method
