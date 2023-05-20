.class Lanet/channel/c/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# instance fields
.field final synthetic a:Lanet/channel/c/a;


# direct methods
.method constructor <init>(Lanet/channel/c/a;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lanet/channel/c/b;->a:Lanet/channel/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .registers 3

    .line 91
    iget-object p2, p0, Lanet/channel/c/b;->a:Lanet/channel/c/a;

    invoke-virtual {p2, p1}, Lanet/channel/c/a;->onConfigUpdate(Ljava/lang/String;)V

    return-void
.end method
