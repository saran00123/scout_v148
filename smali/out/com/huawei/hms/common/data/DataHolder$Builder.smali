.class public Lcom/huawei/hms/common/data/DataHolder$Builder;
.super Ljava/lang/Object;
.source "DataHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private builderColumns:[Ljava/lang/String;

.field private final dataCollectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;

.field private final typeAndDataCollectionCountMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "builderColumnsP cannot be null"

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->builderColumns:[Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->dataCollectionList:Ljava/util/ArrayList;

    .line 6
    iput-object p2, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->type:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->typeAndDataCollectionCountMapping:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/common/data/DataHolder$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/common/data/DataHolderBuilderCreator;)V
    .registers 4

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/hms/common/data/DataHolder$Builder;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->builderColumns:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/hms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->dataCollectionList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public build(I)Lcom/huawei/hms/common/data/DataHolder;
    .registers 4

    .line 1
    new-instance v0, Lcom/huawei/hms/common/data/DataHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/huawei/hms/common/data/DataHolder;-><init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/huawei/hms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method public build(ILandroid/os/Bundle;)Lcom/huawei/hms/common/data/DataHolder;
    .registers 10

    .line 2
    new-instance v6, Lcom/huawei/hms/common/data/DataHolder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/common/data/DataHolder;-><init>(Lcom/huawei/hms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/huawei/hms/common/data/DataHolder$1;)V

    return-object v6
.end method

.method public setDataForContentValuesHashMap(Ljava/util/HashMap;)Lcom/huawei/hms/common/data/DataHolder$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/huawei/hms/common/data/DataHolder$Builder;"
        }
    .end annotation

    const-string v0, "contentValuesHashMap cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 8
    iget-object v2, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->typeAndDataCollectionCountMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_20

    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    goto :goto_30

    .line 14
    :cond_20
    iget-object v2, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->typeAndDataCollectionCountMapping:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->dataCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    move v0, v1

    :goto_30
    if-eqz v0, :cond_3d

    .line 20
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->dataCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->dataCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_42

    .line 23
    :cond_3d
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataHolder$Builder;->dataCollectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_42
    return-object p0
.end method

.method public withRow(Landroid/content/ContentValues;)Lcom/huawei/hms/common/data/DataHolder$Builder;
    .registers 5

    const-string v0, "contentValues cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 8
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/huawei/hms/common/data/DataHolder$Builder;->setDataForContentValuesHashMap(Ljava/util/HashMap;)Lcom/huawei/hms/common/data/DataHolder$Builder;

    move-result-object p1

    return-object p1
.end method
