package org.vulpe.portal.core.model.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import org.vulpe.controller.annotations.Controller;
import org.vulpe.controller.annotations.Select;
import org.vulpe.model.annotations.CodeGenerator;
import org.vulpe.model.db4o.annotations.Inheritance;
import org.vulpe.portal.commons.model.entity.SocialNetwork;
import org.vulpe.portal.commons.model.entity.Status;
import org.vulpe.portal.commons.model.entity.Target;
import org.vulpe.portal.commons.model.entity.TextTranslate;
import org.vulpe.view.annotations.View;
import org.vulpe.view.annotations.View.ViewType;
import org.vulpe.view.annotations.input.VulpeSelect;
import org.vulpe.view.annotations.input.VulpeText;
import org.vulpe.view.annotations.output.VulpeColumn;

@CodeGenerator(controller = @Controller(select = @Select(pageSize = 5)), view = @View(viewType = {
		ViewType.SELECT, ViewType.MAIN }))
@Inheritance
@SuppressWarnings("serial")
@Getter
@Setter
@NoArgsConstructor
public class Social extends BasePortal {

	@VulpeColumn
	@VulpeSelect(required = true, argument = true)
	private SocialNetwork network;

	@VulpeColumn
	@VulpeText(size = 40, required = true, argument = true)
	private String name;

	@VulpeText(size = 40, required = true, argument = true)
	private TextTranslate description;

	@VulpeColumn
	@VulpeSelect(required = true)
	private Target target;

	public Social(Status status) {
		setStatus(status);
	}
	
	@Override
	public String toString() {
		if (getName() != null) {
			return getName().toString();
		}
		return super.toString();
	}

}
