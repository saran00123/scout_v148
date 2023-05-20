.class public Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;
.super Ljava/lang/Object;
.source "OtaBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/OtaBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyBean"
.end annotation


# instance fields
.field private hasDownload:I

.field private hasNew:I

.field private mode:I

.field private msg:Ljava/lang/String;

.field private size:J

.field private status:I

.field private swVer:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private update:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasDownload()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->hasDownload:I

    return v0
.end method

.method public getHasNew()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->hasNew:I

    return v0
.end method

.method public getMode()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->mode:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->size:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->status:I

    return v0
.end method

.method public getSwVer()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->swVer:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->update:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setHasDownload(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->hasDownload:I

    return-void
.end method

.method public setHasNew(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->hasNew:I

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 134
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->mode:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 98
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->size:J

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->status:I

    return-void
.end method

.method public setSwVer(Ljava/lang/String;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->swVer:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->time:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/lang/String;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->update:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->url:Ljava/lang/String;

    return-void
.end method
