.class Lanet/channel/strategy/dispatch/HttpDispatcher$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/dispatch/HttpDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lanet/channel/strategy/dispatch/HttpDispatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lanet/channel/strategy/dispatch/HttpDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;-><init>(Lanet/channel/strategy/dispatch/e;)V

    sput-object v0, Lanet/channel/strategy/dispatch/HttpDispatcher$a;->a:Lanet/channel/strategy/dispatch/HttpDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
