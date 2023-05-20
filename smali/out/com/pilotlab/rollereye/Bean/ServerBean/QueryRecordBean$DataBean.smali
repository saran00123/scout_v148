.class public Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;
.super Ljava/lang/Object;
.source "QueryRecordBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private duration:J

.field private expire_date:Ljava/lang/String;

.field private file_size:I

.field private file_type:I

.field private id:I

.field private name:Ljava/lang/String;

.field private thumb_url:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->duration:J

    return-wide v0
.end method

.method public getExpire_date()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->expire_date:Ljava/lang/String;

    return-object v0
.end method

.method public getFile_size()I
    .registers 2

    .line 137
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->file_size:I

    return v0
.end method

.method public getFile_type()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->file_type:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb_url()Ljava/lang/String;
    .registers 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->thumb_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Common/ServerConstent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 80
    iput-wide p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->duration:J

    return-void
.end method

.method public setExpire_date(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->expire_date:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(I)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->file_size:I

    return-void
.end method

.method public setFile_type(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->file_type:I

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 120
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setThumb_url(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->thumb_url:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->url:Ljava/lang/String;

    return-void
.end method
