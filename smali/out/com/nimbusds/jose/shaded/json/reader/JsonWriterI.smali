.class public interface abstract Lcom/nimbusds/jose/shaded/json/reader/JsonWriterI;
.super Ljava/lang/Object;
.source "JsonWriterI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;",
            "Ljava/lang/Appendable;",
            "Lcom/nimbusds/jose/shaded/json/JSONStyle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
