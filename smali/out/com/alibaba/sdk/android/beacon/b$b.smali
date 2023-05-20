.class final Lcom/alibaba/sdk/android/beacon/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/beacon/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/beacon/b$b$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final mAppKey:Ljava/lang/String;

.field final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/beacon/b$b$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->mAppKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/sdk/android/beacon/b$b$a;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->mExtras:Ljava/util/Map;

    invoke-direct {p0}, Lcom/alibaba/sdk/android/beacon/b$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/beacon/b$b$a;Lcom/alibaba/sdk/android/beacon/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/beacon/b$b;-><init>(Lcom/alibaba/sdk/android/beacon/b$b$a;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->mAppKey:Ljava/lang/String;

    const-string v2, "appKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->d:Ljava/lang/String;

    const-string v2, "appVer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->e:Ljava/lang/String;

    const-string v2, "osType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->f:Ljava/lang/String;

    const-string v2, "osVer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->g:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->h:Ljava/lang/String;

    const-string v2, "beaconVer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$b;->mExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/sdk/android/beacon/b$b;->mExtras:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_67
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    :cond_82
    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/beacon/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/beacon/b$b;->a:Ljava/util/Map;

    const-string/jumbo v2, "sign"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
