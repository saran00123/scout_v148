.class public Lcom/huawei/hms/framework/network/grs/f/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/f/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/huawei/hms/framework/network/grs/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/huawei/hms/framework/network/grs/f/b;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p3}, Lcom/huawei/hms/framework/network/grs/f/b;->a(Landroid/content/Context;Z)V

    sget-object p3, Lcom/huawei/hms/framework/network/grs/f/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->uniqueCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hms/framework/network/grs/f/b;
    .registers 4

    sget-object v0, Lcom/huawei/hms/framework/network/grs/f/b;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->uniqueCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/framework/network/grs/f/b;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/b;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)Lcom/huawei/hms/framework/network/grs/f/b;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/f/b;->a()Lcom/huawei/hms/framework/network/grs/local/model/a;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-string p1, "LocalManagerProxy"

    const-string v0, "appGrs is not null and clear services."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/local/model/a;->a()V

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/framework/network/grs/local/model/a;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/f/a;->a()Lcom/huawei/hms/framework/network/grs/local/model/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/framework/network/grs/e/a;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 4

    new-instance v0, Lcom/huawei/hms/framework/network/grs/f/d;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hms/framework/network/grs/f/d;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/f/a;->c()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/huawei/hms/framework/network/grs/f/c;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hms/framework/network/grs/f/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    :cond_16
    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    return-void
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/b;->a:Lcom/huawei/hms/framework/network/grs/f/a;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/f/a;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
