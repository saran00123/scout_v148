.class public Lanet/channel/flow/NetworkAnalysis;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/flow/NetworkAnalysis$AnalysisProxy;
    }
.end annotation


# static fields
.field private static volatile networkAnalysis:Lanet/channel/flow/INetworkAnalysis;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 7
    new-instance v0, Lanet/channel/flow/NetworkAnalysis$AnalysisProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/flow/NetworkAnalysis$AnalysisProxy;-><init>(Lanet/channel/flow/INetworkAnalysis;)V

    sput-object v0, Lanet/channel/flow/NetworkAnalysis;->networkAnalysis:Lanet/channel/flow/INetworkAnalysis;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lanet/channel/flow/INetworkAnalysis;
    .registers 1

    .line 10
    sget-object v0, Lanet/channel/flow/NetworkAnalysis;->networkAnalysis:Lanet/channel/flow/INetworkAnalysis;

    return-object v0
.end method

.method public static setInstance(Lanet/channel/flow/INetworkAnalysis;)V
    .registers 2

    .line 14
    new-instance v0, Lanet/channel/flow/NetworkAnalysis$AnalysisProxy;

    invoke-direct {v0, p0}, Lanet/channel/flow/NetworkAnalysis$AnalysisProxy;-><init>(Lanet/channel/flow/INetworkAnalysis;)V

    sput-object v0, Lanet/channel/flow/NetworkAnalysis;->networkAnalysis:Lanet/channel/flow/INetworkAnalysis;

    return-void
.end method
