.class Lcom/MagicDate/MagicDate$2;
.super Ljava/lang/Object;
.source "MagicDate.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MagicDate/MagicDate;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MagicDate/MagicDate;

.field private final synthetic val$seekBarValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/MagicDate/MagicDate;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    iput-object p2, p0, Lcom/MagicDate/MagicDate$2;->val$seekBarValue:Landroid/widget/TextView;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 89
    const-string v0, ""

    .line 90
    .local v0, "var":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->val$seekBarValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_5
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_6
    iget-object v1, p0, Lcom/MagicDate/MagicDate$2;->this$0:Lcom/MagicDate/MagicDate;

    invoke-virtual {v1}, Lcom/MagicDate/MagicDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 104
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 107
    return-void
.end method
