.class public Lanet/channel/bytes/a$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/bytes/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lanet/channel/bytes/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lanet/channel/bytes/a;

    invoke-direct {v0}, Lanet/channel/bytes/a;-><init>()V

    sput-object v0, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
