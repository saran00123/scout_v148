.class public Lanet/channel/strategy/c$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lanet/channel/strategy/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lanet/channel/strategy/c;

    invoke-direct {v0}, Lanet/channel/strategy/c;-><init>()V

    sput-object v0, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
