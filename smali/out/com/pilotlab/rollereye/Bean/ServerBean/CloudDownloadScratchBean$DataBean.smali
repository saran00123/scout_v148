.class public Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;
.super Ljava/lang/Object;
.source "CloudDownloadScratchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private recordId:I

.field private scratch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordId()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;->recordId:I

    return v0
.end method

.method public getScratch()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;->scratch:Ljava/lang/String;

    return-object v0
.end method

.method public setRecordId(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;->recordId:I

    return-void
.end method

.method public setScratch(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;->scratch:Ljava/lang/String;

    return-void
.end method
