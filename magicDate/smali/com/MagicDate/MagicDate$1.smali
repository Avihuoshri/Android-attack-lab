.class Lcom/MagicDate/MagicDate$1;
.super Ljava/lang/Object;
.source "MagicDate.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/MagicDate/MagicDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MagicDate/MagicDate;


# direct methods
.method constructor <init>(Lcom/MagicDate/MagicDate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MagicDate/MagicDate$1;->this$0:Lcom/MagicDate/MagicDate;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "selectedYear"    # I
    .param p3, "selectedMonth"    # I
    .param p4, "selectedDay"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/MagicDate/MagicDate$1;->this$0:Lcom/MagicDate/MagicDate;

    invoke-static {v0, p4}, Lcom/MagicDate/MagicDate;->access$0(Lcom/MagicDate/MagicDate;I)V

    .line 120
    iget-object v0, p0, Lcom/MagicDate/MagicDate$1;->this$0:Lcom/MagicDate/MagicDate;

    invoke-static {v0, p3}, Lcom/MagicDate/MagicDate;->access$1(Lcom/MagicDate/MagicDate;I)V

    .line 121
    iget-object v0, p0, Lcom/MagicDate/MagicDate$1;->this$0:Lcom/MagicDate/MagicDate;

    invoke-static {v0, p2}, Lcom/MagicDate/MagicDate;->access$2(Lcom/MagicDate/MagicDate;I)V

    .line 122
    iget-object v0, p0, Lcom/MagicDate/MagicDate$1;->this$0:Lcom/MagicDate/MagicDate;

    iget-object v1, p0, Lcom/MagicDate/MagicDate$1;->this$0:Lcom/MagicDate/MagicDate;

    invoke-static {v1}, Lcom/MagicDate/MagicDate;->access$3(Lcom/MagicDate/MagicDate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/MagicDate/MagicDate;->access$4(Lcom/MagicDate/MagicDate;I)V

    .line 123
    return-void
.end method
