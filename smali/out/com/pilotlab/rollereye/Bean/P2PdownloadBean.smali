.class public Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;
.super Ljava/lang/Object;
.source "P2PdownloadBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final record:Ljava/lang/String; = "record"

.field public static final snapshot:Ljava/lang/String; = "snapshot"

.field public static final status_begin:I = 0x0

.field public static final status_downloading:I = 0x1

.field public static final status_end:I = 0x2

.field public static final status_error:I = -0x1

.field public static final thumb:Ljava/lang/String; = "thumb"


# instance fields
.field private createTime:Ljava/lang/String;

.field private downloadSize:J

.field private download_status:I

.field private duration:J

.field private fileName:Ljava/lang/String;

.field private fileSize:J

.field private fileType:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private local_path:Ljava/lang/String;

.field private remote_path:Ljava/lang/String;

.field private session:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->download_status:I

    return-void
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadSize()J
    .registers 3

    .line 30
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->downloadSize:J

    return-wide v0
.end method

.method public getDownload_status()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->download_status:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->duration:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->fileSize:J

    return-wide v0
.end method

.method public getFileType()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->fileType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocal_path()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->local_path:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote_path()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->remote_path:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->session:I

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDownloadSize(J)V
    .registers 3

    .line 34
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->downloadSize:J

    return-void
.end method

.method public setDownload_status(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->download_status:I

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->duration:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    .line 90
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->fileSize:J

    return-void
.end method

.method public setFileType(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->fileType:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocal_path(Ljava/lang/String;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->local_path:Ljava/lang/String;

    return-void
.end method

.method public setRemote_path(Ljava/lang/String;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->remote_path:Ljava/lang/String;

    return-void
.end method

.method public setSession(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->session:I

    return-void
.end method
