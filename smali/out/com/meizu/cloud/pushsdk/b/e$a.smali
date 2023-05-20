.class Lcom/meizu/cloud/pushsdk/b/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/b/e;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/b/e$a;->a:Lcom/meizu/cloud/pushsdk/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_11

    const/4 p1, -0x1

    return p1

    :cond_11
    if-nez p1, :cond_15

    const/4 p1, 0x0

    return p1

    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/b/e$a;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
