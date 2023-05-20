.class public Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;
.super Ljava/lang/Object;
.source "NasConfigBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Bean/NasConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyBean"
.end annotation


# instance fields
.field private activate:I

.field private name:Ljava/lang/String;

.field private saveDirectory:Ljava/lang/String;

.field private status:I

.field private storageTime:I

.field private type:I

.field private uploadGap:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivate()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->activate:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveDirectory()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->saveDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->status:I

    return v0
.end method

.method public getStorageTime()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->storageTime:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->type:I

    return v0
.end method

.method public getUploadGap()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->uploadGap:I

    return v0
.end method

.method public setActivate(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->activate:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setSaveDirectory(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->saveDirectory:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->status:I

    return-void
.end method

.method public setStorageTime(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->storageTime:I

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->type:I

    return-void
.end method

.method public setUploadGap(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->uploadGap:I

    return-void
.end method
