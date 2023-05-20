.class public Lorg/commonmark/renderer/html/HtmlWriter;
.super Ljava/lang/Object;
.source "HtmlWriter.java"


# static fields
.field private static final NO_ATTRIBUTES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffer:Ljava/lang/Appendable;

.field private lastChar:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/commonmark/renderer/html/HtmlWriter;->NO_ATTRIBUTES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-char v0, p0, Lorg/commonmark/renderer/html/HtmlWriter;->lastChar:C

    if-eqz p1, :cond_b

    .line 20
    iput-object p1, p0, Lorg/commonmark/renderer/html/HtmlWriter;->buffer:Ljava/lang/Appendable;

    return-void

    .line 18
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected append(Ljava/lang/String;)V
    .registers 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/commonmark/renderer/html/HtmlWriter;->buffer:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_14

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v0, v0, -0x1

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/commonmark/renderer/html/HtmlWriter;->lastChar:C

    :cond_13
    return-void

    :catch_14
    move-exception p1

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public line()V
    .registers 3

    .line 59
    iget-char v0, p0, Lorg/commonmark/renderer/html/HtmlWriter;->lastChar:C

    if-eqz v0, :cond_d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const-string v0, "\n"

    .line 60
    invoke-virtual {p0, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public raw(Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    return-void
.end method

.method public tag(Ljava/lang/String;)V
    .registers 3

    .line 32
    sget-object v0, Lorg/commonmark/renderer/html/HtmlWriter;->NO_ATTRIBUTES:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public tag(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public tag(Ljava/lang/String;Ljava/util/Map;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "<"

    .line 40
    invoke-virtual {p0, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    if-eqz p2, :cond_4e

    .line 42
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4e

    .line 43
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const-string v0, " "

    .line 44
    invoke-virtual {p0, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    .line 45
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/commonmark/internal/util/Escaping;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    const-string v0, "=\""

    .line 46
    invoke-virtual {p0, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    .line 47
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/commonmark/internal/util/Escaping;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    const-string p2, "\""

    .line 48
    invoke-virtual {p0, p2}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    goto :goto_18

    :cond_4e
    if-eqz p3, :cond_55

    const-string p1, " /"

    .line 52
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    :cond_55
    const-string p1, ">"

    .line 55
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    return-void
.end method

.method public text(Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-static {p1}, Lorg/commonmark/internal/util/Escaping;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->append(Ljava/lang/String;)V

    return-void
.end method
