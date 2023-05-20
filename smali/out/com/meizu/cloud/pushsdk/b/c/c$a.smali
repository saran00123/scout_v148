.class Lcom/meizu/cloud/pushsdk/b/c/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/meizu/cloud/pushsdk/b/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/meizu/cloud/pushsdk/b/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/b/c/c;-><init>(Lcom/meizu/cloud/pushsdk/b/c/c$1;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/b/c/c$a;->a:Lcom/meizu/cloud/pushsdk/b/c/c;

    return-void
.end method

.method static synthetic a()Lcom/meizu/cloud/pushsdk/b/c/c;
    .registers 1

    sget-object v0, Lcom/meizu/cloud/pushsdk/b/c/c$a;->a:Lcom/meizu/cloud/pushsdk/b/c/c;

    return-object v0
.end method
