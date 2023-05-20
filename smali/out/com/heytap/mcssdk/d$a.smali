.class Lcom/heytap/mcssdk/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/mcssdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/heytap/mcssdk/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/heytap/mcssdk/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/mcssdk/d;-><init>(Lcom/heytap/mcssdk/d$1;)V

    sput-object v0, Lcom/heytap/mcssdk/d$a;->a:Lcom/heytap/mcssdk/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/heytap/mcssdk/d;
    .registers 1

    sget-object v0, Lcom/heytap/mcssdk/d$a;->a:Lcom/heytap/mcssdk/d;

    return-object v0
.end method
