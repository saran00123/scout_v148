.class Lanet/channel/detect/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/strategy/IStrategyListener;


# instance fields
.field final synthetic a:Lanet/channel/detect/d;


# direct methods
.method constructor <init>(Lanet/channel/detect/d;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lanet/channel/detect/e;->a:Lanet/channel/detect/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrategyUpdated(Lanet/channel/strategy/l$d;)V
    .registers 7

    const/4 v0, 0x0

    .line 89
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "anet.HorseRaceDetector"

    const-string v3, "onStrategyUpdated"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lanet/channel/AwcnConfig;->isHorseRaceEnable()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    .line 93
    :cond_12
    iget-object v1, p1, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    if-eqz v1, :cond_3b

    iget-object v1, p1, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    array-length v1, v1

    if-nez v1, :cond_1c

    goto :goto_3b

    .line 96
    :cond_1c
    iget-object v1, p0, Lanet/channel/detect/e;->a:Lanet/channel/detect/d;

    .line 1053
    iget-object v1, v1, Lanet/channel/detect/d;->a:Ljava/util/TreeMap;

    .line 96
    monitor-enter v1

    .line 97
    :goto_21
    :try_start_21
    iget-object v2, p1, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    array-length v2, v2

    if-ge v0, v2, :cond_36

    .line 98
    iget-object v2, p1, Lanet/channel/strategy/l$d;->c:[Lanet/channel/strategy/l$c;

    aget-object v2, v2, v0

    .line 99
    iget-object v3, p0, Lanet/channel/detect/e;->a:Lanet/channel/detect/d;

    .line 2053
    iget-object v3, v3, Lanet/channel/detect/d;->a:Ljava/util/TreeMap;

    .line 99
    iget-object v4, v2, Lanet/channel/strategy/l$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 101
    :cond_36
    monitor-exit v1

    return-void

    :catchall_38
    move-exception p1

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    :goto_3b
    return-void
.end method
