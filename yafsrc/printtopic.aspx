<%@ Page language="c#" Codebehind="printtopic.aspx.cs" AutoEventWireup="false" Inherits="yaf.printtopic" %>
<%@ Register TagPrefix="yaf" Namespace="yaf.controls" Assembly="yaf" %>

<yaf:PageLinks runat="server" id="PageLinks"/>

<asp:repeater id=Posts runat=server>
<ItemTemplate>
<table class=print width=100% cellspacing=0 cellpadding=0>
<tr>
	<td class=printheader><%# GetPrintHeader(Container.DataItem) %></td>
</tr>
<tr>
	<td class=printbody><%# GetPrintBody(Container.DataItem) %></td>
</tr>
</table>
</ItemTemplate>
<SeparatorTemplate>
<br/>
</SeparatorTemplate>
</asp:repeater>