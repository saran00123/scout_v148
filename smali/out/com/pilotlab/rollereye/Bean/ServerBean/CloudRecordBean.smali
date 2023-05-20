.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;
.super Ljava/lang/Object;
.source "CloudRecordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static type_record:I = 0x1

.field public static type_snapshot:I = 0x2


# instance fields
.field private date:Ljava/lang/String;

.field private duration:J

.field private expire_date:Ljava/lang/String;

.field private file_name:Ljava/lang/String;

.field private file_size:J

.field private file_type:I

.field private id:J

.field private local_path:Ljava/lang/String;

.field private thumb_url:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 71
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->duration:J

    return-wide v0
.end method

.method public getExpire_date()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->expire_date:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_name()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_size()J
    .registers 3

    .line 31
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->file_size:J

    return-wide v0
.end method

.method public getFile_type()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->file_type:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->id:J

    return-wide v0
.end method

.method public getLocal_path()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->local_path:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_url()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->thumb_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 75
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->duration:J

    return-void
.end method

.method public setExpire_date(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->expire_date:Ljava/lang/String;

    return-void
.end method

.method public setFile_name(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->file_name:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(J)V
    .registers 3

    .line 35
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->file_size:J

    return-void
.end method

.method public setFile_type(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->file_type:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 51
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->id:J

    return-void
.end method

.method public setLocal_path(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->local_path:Ljava/lang/String;

    return-void
.end method

.method public setThumb_url(Ljava/lang/String;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->thumb_url:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->url:Ljava/lang/String;

    return-void
.end method
