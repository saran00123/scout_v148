.class public Lcom/xiaomi/push/gu;
.super Ljava/lang/Exception;


# instance fields
.field private a:Lcom/xiaomi/push/hd;

.field private a:Lcom/xiaomi/push/he;

.field private a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/hd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    iput-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/xiaomi/push/he;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    if-nez v0, :cond_19

    iget-object v1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/xiaomi/push/hd;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public printStackTrace()V
    .registers 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/gu;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_11
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    const-string v0, "Nested Exception: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/he;

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v1, p0, Lcom/xiaomi/push/gu;->a:Lcom/xiaomi/push/hd;

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v1, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    if-eqz v1, :cond_2f

    const-string v1, "\n  -- caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/gu;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
