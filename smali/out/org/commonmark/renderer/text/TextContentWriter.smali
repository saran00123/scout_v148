.class public Lorg/commonmark/renderer/text/TextContentWriter;
.super Ljava/lang/Object;
.source "TextContentWriter.java"


# instance fields
.field private final buffer:Ljava/lang/Appendable;

.field private lastChar:C


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/commonmark/renderer/text/TextContentWriter;->buffer:Ljava/lang/Appendable;

    return-void
.end method

.method private append(C)V
    .registers 3

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/commonmark/renderer/text/TextContentWriter;->buffer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_8

    .line 65
    iput-char p1, p0, Lorg/commonmark/renderer/text/TextContentWriter;->lastChar:C

    return-void

    :catch_8
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private append(Ljava/lang/String;)V
    .registers 3

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/commonmark/renderer/text/TextContentWriter;->buffer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_14

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/commonmark/renderer/text/TextContentWriter;->lastChar:C

    :cond_13
    return-void

    :catch_14
    move-exception p1

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public colon()V
    .registers 3

    .line 22
    iget-char v0, p0, Lorg/commonmark/renderer/text/TextContentWriter;->lastChar:C

    if-eqz v0, :cond_b

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_b

    .line 23
    invoke-direct {p0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->append(C)V

    :cond_b
    return-void
.end method

.method public line()V
    .registers 3

    .line 28
    iget-char v0, p0, Lorg/commonmark/renderer/text/TextContentWriter;->lastChar:C

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b

    .line 29
    invoke-direct {p0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->append(C)V

    :cond_b
    return-void
.end method

.method public whitespace()V
    .registers 3

    .line 16
    iget-char v0, p0, Lorg/commonmark/renderer/text/TextContentWriter;->lastChar:C

    if-eqz v0, :cond_b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_b

    .line 17
    invoke-direct {p0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->append(C)V

    :cond_b
    return-void
.end method

.method public write(C)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->append(C)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->append(Ljava/lang/String;)V

    return-void
.end method

.method public writeStripped(Ljava/lang/String;)V
    .registers 4

    const-string v0, "[\\r\\n\\s]+"

    const-string v1, " "

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->append(Ljava/lang/String;)V

    return-void
.end method
