.class Lanetwork/channel/stat/NetworkStatCache$holder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/stat/NetworkStatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "holder"
.end annotation


# static fields
.field public static instance:Lanetwork/channel/stat/NetworkStatCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lanetwork/channel/stat/NetworkStatCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/stat/NetworkStatCache;-><init>(Lanetwork/channel/stat/NetworkStatCache$1;)V

    sput-object v0, Lanetwork/channel/stat/NetworkStatCache$holder;->instance:Lanetwork/channel/stat/NetworkStatCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
