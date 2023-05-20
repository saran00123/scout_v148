.class final Lanet/channel/e/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .registers 2

    .line 107
    invoke-static {p1}, Lanet/channel/e/a;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    return-void
.end method
