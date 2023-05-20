.class Lanet/channel/strategy/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/strategy/g;


# direct methods
.method constructor <init>(Lanet/channel/strategy/g;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lanet/channel/strategy/i;->a:Lanet/channel/strategy/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 316
    iget-object v0, p0, Lanet/channel/strategy/i;->a:Lanet/channel/strategy/g;

    invoke-static {v0}, Lanet/channel/strategy/g;->a(Lanet/channel/strategy/g;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 317
    iget-object v0, p0, Lanet/channel/strategy/i;->a:Lanet/channel/strategy/g;

    iget-object v0, v0, Lanet/channel/strategy/g;->b:Lanet/channel/strategy/StrategyInfoHolder;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyInfoHolder;->c()V

    :cond_f
    return-void
.end method
