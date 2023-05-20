.class public Lanet/channel/statist/StrategyStatObject;
.super Lanet/channel/statist/StatObject;
.source "Taobao"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "strategy_stat"
.end annotation


# instance fields
.field public errorTrace:Ljava/lang/StringBuilder;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isFileExists:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isReadObjectSucceed:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isRenameSucceed:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isSucceed:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isTempWriteSucceed:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public readCostTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public readStrategyFileId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public readStrategyFilePath:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public type:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public writeCostTime:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field

.field public writeStrategyFileId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public writeStrategyFilePath:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public writeTempFilePath:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 11
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lanet/channel/statist/StrategyStatObject;->type:I

    .line 12
    iput p1, p0, Lanet/channel/statist/StrategyStatObject;->type:I

    return-void
.end method


# virtual methods
.method public appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 61
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 62
    iget-object v0, p0, Lanet/channel/statist/StrategyStatObject;->errorTrace:Ljava/lang/StringBuilder;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lanet/channel/statist/StrategyStatObject;->errorTrace:Ljava/lang/StringBuilder;

    .line 63
    :cond_f
    iget-object v0, p0, Lanet/channel/statist/StrategyStatObject;->errorTrace:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public beforeCommit()Z
    .registers 2

    .line 72
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    return v0
.end method
