.class public Lanet/channel/security/c;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static volatile a:Lanet/channel/security/ISecurityFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lanet/channel/security/ISecurityFactory;
    .registers 1

    .line 14
    sget-object v0, Lanet/channel/security/c;->a:Lanet/channel/security/ISecurityFactory;

    if-nez v0, :cond_b

    .line 15
    new-instance v0, Lanet/channel/security/d;

    invoke-direct {v0}, Lanet/channel/security/d;-><init>()V

    sput-object v0, Lanet/channel/security/c;->a:Lanet/channel/security/ISecurityFactory;

    .line 27
    :cond_b
    sget-object v0, Lanet/channel/security/c;->a:Lanet/channel/security/ISecurityFactory;

    return-object v0
.end method
