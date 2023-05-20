.class public Lcom/shuyu/gsyvideoplayer/model/GSYModel;
.super Ljava/lang/Object;
.source "GSYModel.java"


# instance fields
.field isCache:Z

.field looping:Z

.field mCachePath:Ljava/io/File;

.field mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field overrideExtension:Ljava/lang/String;

.field speed:F

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    .line 28
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mapHeadData:Ljava/util/Map;

    .line 30
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->looping:Z

    .line 31
    iput p4, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    .line 32
    iput-boolean p5, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache:Z

    .line 33
    iput-object p6, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mCachePath:Ljava/io/File;

    .line 34
    iput-object p7, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->overrideExtension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCachePath()Ljava/io/File;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mCachePath:Ljava/io/File;

    return-object v0
.end method

.method public getMapHeadData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->overrideExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    .line 62
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCache()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache:Z

    return v0
.end method

.method public isLooping()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->looping:Z

    return v0
.end method

.method public setCache(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache:Z

    return-void
.end method

.method public setCachePath(Ljava/io/File;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mCachePath:Ljava/io/File;

    return-void
.end method

.method public setLooping(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->looping:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->mapHeadData:Ljava/util/Map;

    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->overrideExtension:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(F)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->speed:F

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->url:Ljava/lang/String;

    return-void
.end method
