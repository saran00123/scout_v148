.class public abstract Lcom/xuhao/didi/core/iocore/AbsReader;
.super Ljava/lang/Object;
.source "AbsReader.java"

# interfaces
.implements Lcom/xuhao/didi/core/iocore/interfaces/IReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xuhao/didi/core/iocore/interfaces/IReader<",
        "Lcom/xuhao/didi/core/iocore/interfaces/IIOCoreOptions;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInputStream:Ljava/io/InputStream;

.field protected volatile mOkOptions:Lcom/xuhao/didi/core/iocore/interfaces/IIOCoreOptions;

.field protected mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/xuhao/didi/core/iocore/AbsReader;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 42
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public initialize(Ljava/io/InputStream;Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;)V
    .registers 3

    .line 28
    iput-object p2, p0, Lcom/xuhao/didi/core/iocore/AbsReader;->mStateSender:Lcom/xuhao/didi/core/iocore/interfaces/IStateSender;

    .line 29
    iput-object p1, p0, Lcom/xuhao/didi/core/iocore/AbsReader;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setOption(Lcom/xuhao/didi/core/iocore/interfaces/IIOCoreOptions;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/xuhao/didi/core/iocore/AbsReader;->mOkOptions:Lcom/xuhao/didi/core/iocore/interfaces/IIOCoreOptions;

    return-void
.end method
