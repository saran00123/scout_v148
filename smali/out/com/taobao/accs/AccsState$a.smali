.class Lcom/taobao/accs/AccsState$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/AccsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/taobao/accs/AccsState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/taobao/accs/AccsState;

    invoke-direct {v0}, Lcom/taobao/accs/AccsState;-><init>()V

    sput-object v0, Lcom/taobao/accs/AccsState$a;->a:Lcom/taobao/accs/AccsState;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/taobao/accs/AccsState;
    .registers 1

    .line 30
    sget-object v0, Lcom/taobao/accs/AccsState$a;->a:Lcom/taobao/accs/AccsState;

    return-object v0
.end method
